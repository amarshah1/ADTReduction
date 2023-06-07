
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
(assert (or (= l2 Nil) (is-Cons l1)) )
(assert (or (is-Cons l2) (= l1 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil) (is-Cons l1)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l3 l1) (= l1 Nil) (= l3 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
