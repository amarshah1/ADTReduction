
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
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Nil l3) (is-Cons l3) (= l3 l1)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (is-Cons Nil) )
(assert (not (= l1 l2)) )
(assert (not (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l3 Nil) (= l2 Nil) (= l1 Nil)) )
(check-sat)