
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
(assert (and (is-Cons Nil) (= l3 Nil) (is-Cons Nil) (is-Nil l1)) )
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (not (is-Cons l0)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l2 Nil) (= l2 l3)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l2)) )
(check-sat)
