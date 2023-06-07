
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
(assert (is-Cons l3) )
(assert (not (= l0 l1)) )
(assert (= l2 Nil) )
(assert (or (is-Cons l1) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l0 Nil) (= l1 Nil) (is-Nil l2)) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l2 l1) (= l2 l1)) )
(check-sat)
