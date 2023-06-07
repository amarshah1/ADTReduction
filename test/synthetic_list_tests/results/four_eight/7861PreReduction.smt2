
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
(assert (not (is-Nil Nil)) )
(assert (or (= l3 Nil) (is-Cons l2)) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (not (= l0 l2)) )
(assert (or (= l2 Nil) (is-Nil l1) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (not (is-Cons Nil)) )
(check-sat)
