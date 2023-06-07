
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
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Cons Nil) (= l1 l2)) )
(assert (or (is-Cons l3) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l1 l0) (is-Nil Nil) (= l1 l1)) )
(assert (not (is-Nil Nil)) )
(check-sat)