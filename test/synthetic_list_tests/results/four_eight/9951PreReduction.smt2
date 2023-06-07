
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (is-Cons l3) (is-Nil l1) (= l1 Nil)) )
(assert (and (= l3 Nil) (is-Cons l1)) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (= l2 l0) (= l1 Nil) (= l0 l1)) )
(assert (not (= l0 l2)) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (not (= l2 l0)) )
(check-sat)
