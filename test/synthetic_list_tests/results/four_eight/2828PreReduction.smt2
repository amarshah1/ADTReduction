
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
(assert (or (is-Cons Nil) (= l1 Nil) (= l3 Nil) (is-Cons l0)) )
(assert (or (= l1 l3) (= l1 Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l1 l0) (= l3 l1)) )
(assert (not (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (= l3 Nil) )
(assert (is-Cons l2) )
(assert (and (= l1 Nil) (is-Nil l1)) )
(check-sat)
